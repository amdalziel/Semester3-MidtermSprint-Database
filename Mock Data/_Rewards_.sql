insert into "Rewards" (customer_id, amount_spent, reward_points) values (1, 5559, 259);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (2, 6422, 92);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (3, 6117, 572);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (4, 9679, 394);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (5, 8775, 62);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (6, 3155, 998);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (7, 5015, 613);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (8, 6092, 493);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (9, 2607, 361);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (10, 8837, 268);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (11, 5385, 393);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (12, 2042, 478);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (13, 761, 698);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (14, 6311, 219);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (15, 6769, 410);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (16, 6400, 821);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (17, 5322, 278);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (18, 5041, 36);
insert into "Rewards" (customer_id, amount_spent, reward_points) values (19, 3384, 929);

-- Function to calculate reward points
CREATE OR REPLACE FUNCTION calculate_reward_points()
RETURNS TRIGGER AS $$
BEGIN
    -- Calculate reward points as 10 points for every $100 spent
    NEW.RewardPoints := floor(NEW.amountspent / 100) * 10;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger to apply the function on insert or update
CREATE TRIGGER trigger_calculate_reward_points
BEFORE INSERT OR UPDATE ON "Rewards"
FOR EACH ROW EXECUTE FUNCTION calculate_reward_points();