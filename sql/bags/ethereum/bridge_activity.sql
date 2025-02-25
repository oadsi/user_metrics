-- user_address | bridge_name | token_contract | token_symbol | n_in | n_out | in_token_volume | in_usd_volume | out_token_volume | out_usd_volume
-- PLACE Bridges USING PLACEHOLDER BELOW 
with outbridges AS (
-- multichain
SELECT 'Multichain' as bridge, LOWER('0x7ea2be2df7ba6e54b1a9c70676f668455e329d29') as BRIDGE_ADDRESS, LOWER('0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48') as CONTRACT_ADDRESS, 'USDC' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xbbc4a8d076f4b1888fec42581b6fc58d242cf2d5') as BRIDGE_ADDRESS, LOWER('0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3') as CONTRACT_ADDRESS, 'MIM' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x739ca6d71365a08f584c8fc4e1029045fa8abc4b') as BRIDGE_ADDRESS, LOWER('0x6b175474e89094c44da98b954eedeac495271d0f') as CONTRACT_ADDRESS, 'DAI' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x22648c12acd87912ea1710357b1302c6a4154ebc') as BRIDGE_ADDRESS, LOWER('0xdac17f958d2ee523a2206206994597c13d831ec7') as CONTRACT_ADDRESS, 'USDT' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xb72842d6f5fedf91d22d56202802bb9a79c6322e') as BRIDGE_ADDRESS, LOWER('0xdb25f211ab05b1c97d595516f45794528a807ad8') as CONTRACT_ADDRESS, 'EURS' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x0bd19f6447cd676255c7c7b00428462b3da67e3a') as BRIDGE_ADDRESS, LOWER('0x0000000000085d4780b73119b644ae5ecd22b376') as CONTRACT_ADDRESS, 'TUSD' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xe6b9d092223f39013656702a40dbe6b7decc5746') as BRIDGE_ADDRESS, LOWER('0x2260fac5e5542a773aa44fbcfedf7c193bc2c599') as CONTRACT_ADDRESS, 'WBTC' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x0615dbba33fe61a31c7ed131bda6655ed76748b1') as BRIDGE_ADDRESS, LOWER('0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2') as CONTRACT_ADDRESS, 'WETH' as SYMBOL FROM DUAL UNION

  -- Stargate / LayerZero
SELECT 'Stargate' as bridge, LOWER('0x150f94b44927f078737562f0fcf3c95c01cc2376') as BRIDGE_ADDRESS, NULL as CONTRACT_ADDRESS, 'ETH' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0xdf0770dF86a8034b3EFEf0A1Bb3c889B8332FF56') as BRIDGE_ADDRESS, lower('0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48') as CONTRACT_ADDRESS, 'USDC' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0x38EA452219524Bb87e18dE1C24D3bB59510BD783') as BRIDGE_ADDRESS, lower('0xdAC17F958D2ee523a2206206994597C13D831ec7') as CONTRACT_ADDRESS, 'USDT' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0x0Faf1d2d3CED330824de3B8200fc8dc6E397850d') as BRIDGE_ADDRESS, lower('0x6B175474E89094C44Da98b954EedeAC495271d0F') as CONTRACT_ADDRESS, 'DAI' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0xfA0F307783AC21C39E939ACFF795e27b650F6e68') as BRIDGE_ADDRESS, lower('0x853d955aCEf822Db058eb8505911ED77F175b99e') as CONTRACT_ADDRESS, 'FRAX' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0x590d4f8A68583639f215f675F3a259Ed84790580') as BRIDGE_ADDRESS, lower('0x57Ab1ec28D129707052df4dF418D58a2D46d5f51') as CONTRACT_ADDRESS, 'SUSD' as SYMBOL FROM DUAL 
UNION


  -- HOP USDC Bridge
SELECT 'Hop' as bridge, LOWER('0x3666f603Cc164936C1b87e207F36BEBa4AC5f18a') as BRIDGE_ADDRESS, LOWER('0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48') as CONTRACT_ADDRESS, 'USDC' as SYMBOL FROM DUAL 
UNION
  -- HOP USDT Bridge 
  SELECT 'Hop' as bridge, LOWER('0x3E4a3a4796d16c0Cd582C382691998f7c06420B6') as BRIDGE_ADDRESS, LOWER('0xdAC17F958D2ee523a2206206994597C13D831ec7') as CONTRACT_ADDRESS,'USDT' as SYMBOL FROM DUAL 
UNION
 -- HOP MATIC Bridge
 SELECT 'Hop' as bridge, LOWER('0x22B1Cbb8D98a01a3B71D034BB899775A76Eb1cc2') as BRIDGE_ADDRESS, LOWER('0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0') as CONTRACT_ADDRESS, 'MATIC' as SYMBOL FROM DUAL
  UNION
 -- HOP DAI Bridge
 SELECT 'Hop' as bridge, LOWER('0x3d4Cc8A61c7528Fd86C55cfe061a78dCBA48EDd1') as BRIDGE_ADDRESS, LOWER('0x6B175474E89094C44Da98b954EedeAC495271d0F') as CONTRACT_ADDRESS, 'DAI' as SYMBOL FROM DUAL
  UNION
 -- HOP ETH Bridge
 SELECT 'Hop' as bridge, LOWER('0xb8901acB165ed027E32754E0FFe830802919727f') as BRIDGE_ADDRESS, NULL as CONTRACT_ADDRESS, 'ETH' as SYMBOL FROM DUAL
  UNION
 -- HOP WBTC Bridge
 SELECT 'Hop' as bridge, LOWER('0xb98454270065A31D71Bf635F6F7Ee6A518dFb849') as BRIDGE_ADDRESS, LOWER('0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599') as CONTRACT_ADDRESS, 'WBTC' as SYMBOL FROM DUAL
  UNION
 -- HOP HOP Bridge
 SELECT 'Hop' as bridge, LOWER('0x914f986a44AcB623A277d6Bd17368171FCbe4273') as BRIDGE_ADDRESS, LOWER('0xc5102fE9359FD9a28f877a67E36B0F050d81a3CC') as CONTRACT_ADDRESS, 'HOP' as SYMBOL FROM DUAL
  UNION
 -- HOP SNX Bridge
 SELECT 'Hop' as bridge, LOWER('0x893246FACF345c99e4235E5A7bbEE7404c988b96') as BRIDGE_ADDRESS, LOWER('0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f') as CONTRACT_ADDRESS, 'SNX' as SYMBOL FROM DUAL
UNION
 -- HOP sUSD Bridge
 SELECT 'Hop' as bridge, LOWER('0x36443fC70E073fe9D50425f82a3eE19feF697d62') as BRIDGE_ADDRESS, LOWER('0x57Ab1ec28D129707052df4dF418D58a2D46d5f51') as CONTRACT_ADDRESS, 'sUSD' as SYMBOL FROM DUAL
      
),

inbridges AS (
--multichain
SELECT 'Multichain' as bridge, LOWER('0xBa8Da9dcF11B50B03fd5284f164Ef5cdEF910705') as BRIDGE_ADDRESS, NULL as CONTRACT_ADDRESS, 'ETH' as SYMBOL FROM DUAL 
UNION

SELECT 'Multichain' as bridge, LOWER('0xC564EE9f21Ed8A2d8E7e76c085740d5e4c5FaFbE') as BRIDGE_ADDRESS, LOWER('0x6b175474e89094c44da98b954eedeac495271d0f') as CONTRACT_ADDRESS, 'DAI' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xC564EE9f21Ed8A2d8E7e76c085740d5e4c5FaFbE') as BRIDGE_ADDRESS, LOWER('0x0000000000085d4780B73119b644AE5ecd22b376') as CONTRACT_ADDRESS, 'TUSD' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xC564EE9f21Ed8A2d8E7e76c085740d5e4c5FaFbE') as BRIDGE_ADDRESS, LOWER('0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48') as CONTRACT_ADDRESS, 'USDC' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xC564EE9f21Ed8A2d8E7e76c085740d5e4c5FaFbE') as BRIDGE_ADDRESS, LOWER('0xdac17f958d2ee523a2206206994597c13d831ec7') as CONTRACT_ADDRESS, 'USDT' as SYMBOL FROM DUAL UNION

SELECT 'Multichain' as bridge, LOWER('0x7ea2be2df7ba6e54b1a9c70676f668455e329d29') as BRIDGE_ADDRESS, LOWER('0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48') as CONTRACT_ADDRESS, 'USDC' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xbbc4a8d076f4b1888fec42581b6fc58d242cf2d5') as BRIDGE_ADDRESS, LOWER('0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3') as CONTRACT_ADDRESS, 'MIM' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x739ca6d71365a08f584c8fc4e1029045fa8abc4b') as BRIDGE_ADDRESS, LOWER('0x6b175474e89094c44da98b954eedeac495271d0f') as CONTRACT_ADDRESS, 'DAI' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x22648c12acd87912ea1710357b1302c6a4154ebc') as BRIDGE_ADDRESS, LOWER('0xdac17f958d2ee523a2206206994597c13d831ec7') as CONTRACT_ADDRESS, 'USDT' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xb72842d6f5fedf91d22d56202802bb9a79c6322e') as BRIDGE_ADDRESS, LOWER('0xdb25f211ab05b1c97d595516f45794528a807ad8') as CONTRACT_ADDRESS, 'EURS' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x0bd19f6447cd676255c7c7b00428462b3da67e3a') as BRIDGE_ADDRESS, LOWER('0x0000000000085d4780b73119b644ae5ecd22b376') as CONTRACT_ADDRESS, 'TUSD' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0xe6b9d092223f39013656702a40dbe6b7decc5746') as BRIDGE_ADDRESS, LOWER('0x2260fac5e5542a773aa44fbcfedf7c193bc2c599') as CONTRACT_ADDRESS, 'WBTC' as SYMBOL FROM DUAL UNION
SELECT 'Multichain' as bridge, LOWER('0x0615dbba33fe61a31c7ed131bda6655ed76748b1') as BRIDGE_ADDRESS, LOWER('0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2') as CONTRACT_ADDRESS, 'WETH' as SYMBOL FROM DUAL UNION

  -- Stargate / LayerZero

SELECT 'Stargate' as bridge, LOWER('0xe93685f3bba03016f02bd1828badd6195988d950') as BRIDGE_ADDRESS, NULL as CONTRACT_ADDRESS, 'ETH' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0x72e2f4830b9e45d52f80ac08cb2bec0fef72ed9c') as BRIDGE_ADDRESS, NULL as CONTRACT_ADDRESS, 'ETH' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0xdf0770dF86a8034b3EFEf0A1Bb3c889B8332FF56') as BRIDGE_ADDRESS, lower('0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48') as CONTRACT_ADDRESS, 'USDC' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0x38EA452219524Bb87e18dE1C24D3bB59510BD783') as BRIDGE_ADDRESS, lower('0xdAC17F958D2ee523a2206206994597C13D831ec7') as CONTRACT_ADDRESS, 'USDT' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0x0Faf1d2d3CED330824de3B8200fc8dc6E397850d') as BRIDGE_ADDRESS, lower('0x6B175474E89094C44Da98b954EedeAC495271d0F') as CONTRACT_ADDRESS, 'DAI' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0xfA0F307783AC21C39E939ACFF795e27b650F6e68') as BRIDGE_ADDRESS, lower('0x853d955aCEf822Db058eb8505911ED77F175b99e') as CONTRACT_ADDRESS, 'FRAX' as SYMBOL FROM DUAL 
UNION

SELECT 'Stargate' as bridge, LOWER('0x590d4f8A68583639f215f675F3a259Ed84790580') as BRIDGE_ADDRESS, lower('0x57Ab1ec28D129707052df4dF418D58a2D46d5f51') as CONTRACT_ADDRESS, 'SUSD' as SYMBOL FROM DUAL 
UNION

  -- HOP USDC Bridge
SELECT 'Hop' as bridge, LOWER('0x3666f603Cc164936C1b87e207F36BEBa4AC5f18a') as BRIDGE_ADDRESS, LOWER('0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48') as CONTRACT_ADDRESS, 'USDC' as SYMBOL FROM DUAL 
UNION
  -- HOP USDT Bridge 
  SELECT 'Hop' as bridge, LOWER('0x3E4a3a4796d16c0Cd582C382691998f7c06420B6') as BRIDGE_ADDRESS, LOWER('0xdAC17F958D2ee523a2206206994597C13D831ec7') as CONTRACT_ADDRESS,'USDT' as SYMBOL FROM DUAL 
UNION
 -- HOP MATIC Bridge
 SELECT 'Hop' as bridge, LOWER('0x22B1Cbb8D98a01a3B71D034BB899775A76Eb1cc2') as BRIDGE_ADDRESS, LOWER('0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0') as CONTRACT_ADDRESS, 'MATIC' as SYMBOL FROM DUAL
  UNION
 -- HOP DAI Bridge
 SELECT 'Hop' as bridge, LOWER('0x3d4Cc8A61c7528Fd86C55cfe061a78dCBA48EDd1') as BRIDGE_ADDRESS, LOWER('0x6B175474E89094C44Da98b954EedeAC495271d0F') as CONTRACT_ADDRESS, 'DAI' as SYMBOL FROM DUAL
  UNION
 -- HOP ETH Bridge
 SELECT 'Hop' as bridge, LOWER('0xb8901acB165ed027E32754E0FFe830802919727f') as BRIDGE_ADDRESS, NULL as CONTRACT_ADDRESS, 'ETH' as SYMBOL FROM DUAL
  UNION
 -- HOP WBTC Bridge
 SELECT 'Hop' as bridge, LOWER('0xb98454270065A31D71Bf635F6F7Ee6A518dFb849') as BRIDGE_ADDRESS, LOWER('0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599') as CONTRACT_ADDRESS, 'WBTC' as SYMBOL FROM DUAL
  UNION
 -- HOP HOP Bridge
 SELECT 'Hop' as bridge, LOWER('0x914f986a44AcB623A277d6Bd17368171FCbe4273') as BRIDGE_ADDRESS, LOWER('0xc5102fE9359FD9a28f877a67E36B0F050d81a3CC') as CONTRACT_ADDRESS, 'HOP' as SYMBOL FROM DUAL
  UNION
 -- HOP SNX Bridge
 SELECT 'Hop' as bridge, LOWER('0x893246FACF345c99e4235E5A7bbEE7404c988b96') as BRIDGE_ADDRESS, LOWER('0xc011a73ee8576fb46f5e1c5751ca3b9fe0af2a6f') as CONTRACT_ADDRESS, 'SNX' as SYMBOL FROM DUAL
UNION
 -- HOP sUSD Bridge
 SELECT 'Hop' as bridge, LOWER('0x36443fC70E073fe9D50425f82a3eE19feF697d62') as BRIDGE_ADDRESS, LOWER('0x57Ab1ec28D129707052df4dF418D58a2D46d5f51') as CONTRACT_ADDRESS, 'sUSD' as SYMBOL FROM DUAL
      
),

to_bridge AS (
  SELECT FROM_ADDRESS as user_address, 
  outbridges.bridge as bridge_name, 
  ethereum.core.ez_token_transfers.CONTRACT_ADDRESS as token_contract,
  ethereum.core.ez_token_transfers.SYMBOL as token_symbol,
  SUM(AMOUNT) as out_token_volume, SUM(AMOUNT_USD) as out_usd_volume, COUNT(*) as n_out
  FROM ethereum.core.ez_token_transfers LEFT JOIN outbridges ON ethereum.core.ez_token_transfers.TO_ADDRESS = outbridges.BRIDGE_ADDRESS 
WHERE ethereum.core.ez_token_transfers.CONTRACT_ADDRESS IN (SELECT CONTRACT_ADDRESS FROM outbridges) AND 
TO_ADDRESS IN (SELECT BRIDGE_ADDRESS FROM outbridges) AND 
 BLOCK_TIMESTAMP >= '{{start_date}}'
  AND block_timestamp <= '{{end_date}}'
GROUP BY user_address, token_contract, token_symbol, bridge_name 
),

to_bridge_eth AS ( 
SELECT ETH_FROM_ADDRESS as user_address, 
   outbridges.bridge as bridge_name, 
  NULL as token_contract, 
  'ETH' as token_symbol, 
  SUM(AMOUNT) as out_token_volume, SUM(AMOUNT_USD) as out_usd_volume, COUNT(*) as n_out
  FROM ethereum.core.ez_eth_transfers LEFT JOIN outbridges ON ethereum.core.ez_eth_transfers.ETH_TO_ADDRESS = outbridges.BRIDGE_ADDRESS
WHERE ETH_TO_ADDRESS IN (SELECT BRIDGE_ADDRESS FROM outbridges) AND 
 BLOCK_TIMESTAMP  >= '{{start_date}}'
  AND block_timestamp <= '{{end_date}}'
  GROUP BY user_address, token_contract, token_symbol, bridge_name
),

from_bridge AS ( 
  SELECT TO_ADDRESS as user_address, 
  inbridges.bridge as bridge_name, 
  ethereum.core.ez_token_transfers.CONTRACT_ADDRESS as token_contract,
  ethereum.core.ez_token_transfers.SYMBOL as token_symbol,
  SUM(AMOUNT) as in_token_volume, SUM(AMOUNT_USD) as in_usd_volume,  COUNT(*) as n_in
  FROM ethereum.core.ez_token_transfers LEFT JOIN inbridges ON ethereum.core.ez_token_transfers.FROM_ADDRESS = inbridges.BRIDGE_ADDRESS 
WHERE ethereum.core.ez_token_transfers.CONTRACT_ADDRESS IN (SELECT CONTRACT_ADDRESS FROM inbridges) AND 
FROM_ADDRESS IN (SELECT BRIDGE_ADDRESS FROM inbridges) AND 
 BLOCK_TIMESTAMP  >= '{{start_date}}'
  AND block_timestamp <= '{{end_date}}'
GROUP BY user_address, token_contract, token_symbol, bridge_name 
),

from_bridge_eth AS (
SELECT ETH_TO_ADDRESS as user_address, 
   inbridges.bridge as bridge_name, 
  NULL as token_contract, 
  'ETH' as token_symbol, 
  SUM(AMOUNT) as in_token_volume, SUM(AMOUNT_USD) as in_usd_volume, COUNT(*) as n_in
  FROM ethereum.core.ez_eth_transfers LEFT JOIN inbridges ON ethereum.core.ez_eth_transfers.ETH_FROM_ADDRESS = inbridges.BRIDGE_ADDRESS
WHERE ETH_FROM_ADDRESS IN (SELECT BRIDGE_ADDRESS FROM inbridges) AND 
 BLOCK_TIMESTAMP  >= '{{start_date}}'
  AND block_timestamp <= '{{end_date}}'
  GROUP BY user_address, token_contract, token_symbol, bridge_name
)
  
  -- user_address | bridge_name | token_contract | token_symbol | n_in | n_out | in_token_volume | in_usd_volume | out_token_volume | out_usd_volume
SELECT user_address, bridge_name, token_contract, token_symbol, 
  n_in, n_out, in_token_volume, in_usd_volume, out_token_volume, out_usd_volume  
   FROM from_bridge NATURAL FULL OUTER JOIN to_bridge
 UNION (SELECT user_address, bridge_name, token_contract, token_symbol,
  n_in, n_out, in_token_volume, in_usd_volume, out_token_volume, out_usd_volume  
   FROM from_bridge_eth NATURAL FULL OUTER JOIN to_bridge_eth)
