INSERT INTO `twitter-app`.`user` (`email`, `enabled`, `password`, `username`) VALUES ('example1@example.pl', b'1', '$2a$10$XZn7auh6lQF5eKbWu/l85O7Pu1Fe4gxCFIQlfCHw5zkiaZeR9cFaS', 'example1');
INSERT INTO `twitter-app`.`user` (`email`, `enabled`, `password`, `username`) VALUES ('example2@example.pl', b'1', '$2a$10$BN9S9RggVFzCZ49LXrmOUeyX5pQArw.pThi14QPJXlA/IX5Emf0lq', 'example2');

INSERT INTO `twitter-app`.`tweet` (`created`, `text`, `user_id`) VALUES ('2018-07-04 22:00:00', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam?', '1');
INSERT INTO `twitter-app`.`tweet` (`created`, `text`, `user_id`) VALUES ('2018-07-04 19:22:00', 'Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra.', '2');
INSERT INTO `twitter-app`.`tweet` (`created`, `text`, `user_id`) VALUES ('2018-07-04 18:21:00', 'Vestibulum erat nulla, ullamcorper nec, rutrum non.', '1');
INSERT INTO `twitter-app`.`tweet` (`created`, `text`, `user_id`) VALUES ('2018-07-04 17:10:00', 'Duis pulvinar. Donec quis nibh at felis congue commodo. .', '1');
INSERT INTO `twitter-app`.`tweet` (`created`, `text`, `user_id`) VALUES ('2018-07-04 16:33:00', 'Fusce tellus. Aliquam erat volutpat.', '1');
INSERT INTO `twitter-app`.`tweet` (`created`, `text`, `user_id`) VALUES ('2018-07-04 14:43:00', 'Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe.', '2');
INSERT INTO `twitter-app`.`tweet` (`created`, `text`, `user_id`) VALUES ('2018-07-04 21:52:00', 'Praesent vitae arcu tempor neque lacinia pretium. Mauris dolor felis, sagittis at.', '2');

INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:43:34.989000', 'Curabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien.', '7', '1');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:44:34.989000', 'Aliquam ornare wisi eu metus.', '7', '1');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:30:34.989000', 'Duis vel volutpat risus. Phasellus.', '2', '2');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:30:34.989000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '3', '2');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:30:34.989000', 'Morbi leo mi, nonummy eget tristique non, rhoncus non leo. Pellentesque ipsum.', '3', '2');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:30:34.989000', 'Ut tempus purus at lorem.', '7', '1');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:30:34.989000', 'Proin mattis lacinia justo.', '7', '2');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:30:34.989000', 'Integer lacinia.', '2', '2');
INSERT INTO `twitter-app`.`comment` (`created`, `text`, `tweet_id`, `user_id`) VALUES ('2018-07-08 10:30:34.989000', 'Morbi leo mi, nonummy eget tristique non, rhoncus non leo.', '7', '2');

INSERT INTO `twitter-app`.`message` (`id`, `created`, `status`, `text`, `receiver_id`, `sender_id`) VALUES ('1', '2018-07-21 11:31:30.111111', b'1', 'Donec iaculis gravida nulla.', '2', '1');
INSERT INTO `twitter-app`.`message` (`id`, `created`, `status`, `text`, `receiver_id`, `sender_id`) VALUES ('2', '2018-07-21 11:31:20.369000', b'1', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Phasellus faucibus molestie nisl.', '2', '1');
INSERT INTO `twitter-app`.`message` (`id`, `created`, `status`, `text`, `receiver_id`, `sender_id`) VALUES ('3', '2018-07-21 11:31:30.000000', b'1', 'Nullam sapien sem, ornare ac, nonummy non, lobortis a enim. Duis sapien nunc, commodo et, interdum suscipit, sollicitudin et, dolor.', '2', '1');
INSERT INTO `twitter-app`.`message` (`id`, `created`, `status`, `text`, `receiver_id`, `sender_id`) VALUES ('4', '2018-07-21 11:31:25.369000', b'1', 'Morbi leo mi, nonummy eget tristique non, rhoncus non leo. Integer lacinia.', '2', '1');
