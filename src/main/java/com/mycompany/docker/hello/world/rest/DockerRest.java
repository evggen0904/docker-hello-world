package com.mycompany.docker.hello.world.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerRest {

    @GetMapping("/")
    public String getHello() {
        return "Hello docker!!!";
    }
}
