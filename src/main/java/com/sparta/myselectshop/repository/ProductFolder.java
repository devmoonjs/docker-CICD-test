package com.sparta.myselectshop.repository;

import com.sparta.myselectshop.entity.Folder;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductFolder extends JpaRepository<Folder, Long> {
}
