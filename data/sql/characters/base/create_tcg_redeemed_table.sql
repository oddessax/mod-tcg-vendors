-- mod-tcg-vendors: character redemption tracking table
-- Apply to: characters database

CREATE TABLE IF NOT EXISTS `character_tcg_redeemed` (
    `guid`          INT UNSIGNED        NOT NULL COMMENT 'Character GUID',
    `item_entry`    MEDIUMINT UNSIGNED  NOT NULL COMMENT 'Redemption key item entry ID',
    `redeemed_date` TIMESTAMP           NOT NULL DEFAULT CURRENT_TIMESTAMP
                                        COMMENT 'UTC timestamp of when the item was redeemed',
    PRIMARY KEY (`guid`, `item_entry`)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COMMENT='Tracks one-time TCG and promotional item redemptions per character (mod-tcg-vendors)';
