package com.learner.service.impl;

import com.learner.dto.UserDto;
import com.learner.entity.User;
import com.learner.mapper.UserMapper;
import com.learner.repository.UserRepository;
import com.learner.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDto createUser(UserDto userDto) {
        User user = userRepository.save(UserMapper.INSTANCE.mapToUser(userDto));
        return UserMapper.INSTANCE.mapToUserDto(user);
    }

}
