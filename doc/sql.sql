create database paradise;

use paradise;

create table `job`(
    `job_id` bigint not null primary key comment 'ID',
    `level` int comment '等级',
    `job` varchar(50) comment '职位',
    unique key `job` (`job`)
)engine=innodb default charset=utf8mb4 comment='职位';

create table `user` (
    `user_id` bigint not null primary key comment 'ID',
    `account` varchar(50) not null unique comment '账号',
    `password` char(32) not null comment '密码',
    `name` varchar(50) not null comment '名称',
    `job_id` bigint not null references job(job_id)
)engine=innodb default charset=utf8mb4 comment='用户';
