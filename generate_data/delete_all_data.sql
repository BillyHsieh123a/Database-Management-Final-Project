BEGIN;
DELETE FROM public."user_game_statistics";
DELETE FROM public."user_games";
DELETE FROM public."game_publishers";
DELETE FROM public."publishers";
DELETE FROM public."game_reviews";
DELETE FROM public."game_game_type";
DELETE FROM public."cart";
DELETE FROM public."buy_item_cancel";
DELETE FROM public."buy_item";
DELETE FROM public."add_fund_record";
DELETE FROM public."user_friends";
DELETE FROM public."user_devices";
DELETE FROM public."user_game_types";
DELETE FROM public."achievements";
DELETE FROM public."game_item";
DELETE FROM public."game";
DELETE FROM public."user";
DELETE FROM public."game_types";
COMMIT;
