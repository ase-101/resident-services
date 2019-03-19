-- object: ida.token_seq | type: TABLE --
-- DROP TABLE IF EXISTS ida.token_seq CASCADE;
CREATE TABLE ida.token_seq(
	seq_no character varying(32) NOT NULL,
	cr_by character varying(32) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	is_deleted boolean,
	del_dtimes timestamp,
	CONSTRAINT pk_tknseq PRIMARY KEY (seq_no)

);
-- ddl-end --
COMMENT ON TABLE ida.token_seq IS 'Token ID Sequence: Stores sequence numbers that are used in the algorithm to generate token. Stores a incremental sequence number that will be used as salt in the algorithm to generate a token ID. This salt value is encrypted/hashed and used along with a seed number in the algorithm to generate a unique random number.';
-- ddl-end --
COMMENT ON COLUMN ida.token_seq.seq_no IS 'Sequence Number: Sequence number is the number generated which is used in the algorithm to generate token ID.';
-- ddl-end --
ALTER TABLE ida.token_seq OWNER TO sysadmin;
-- ddl-end --

