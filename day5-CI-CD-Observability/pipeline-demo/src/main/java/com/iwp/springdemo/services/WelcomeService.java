package com.iwp.springdemo.services;

import org.springframework.stereotype.Component;

@Component
public class WelcomeService {
    private static final String WELCOME_MESSAGE = "Welcome to Infra Bootcamp!";
    private static final String HELLO = "Hello";

    public String getMessage(String name) {
        return HELLO + " " + name + ", " + WELCOME_MESSAGE;
    }
}
