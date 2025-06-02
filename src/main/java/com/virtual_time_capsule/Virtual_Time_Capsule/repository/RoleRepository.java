package com.virtual_time_capsule.Virtual_Time_Capsule.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.virtual_time_capsule.Virtual_Time_Capsule.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role,Long> {

}
