.class public interface abstract Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;
.super Ljava/lang/Object;
.source "AddressListParserConstants.java"


# static fields
.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0x22

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "<EOF>"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "\"\\r\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "\"\\n\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\",\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\":\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\";\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\"<\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\">\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\"@\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\".\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<WS>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<ALPHA>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<DIGIT>"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "<ATEXT>"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<DOTATOM>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\"[\""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "<token of kind 16>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "<token of kind 17>"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"]\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "<token of kind 21>"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "<token of kind 23>"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "<token of kind 24>"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "<token of kind 27>"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "<token of kind 29>"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "<token of kind 30>"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "<QUOTEDPAIR>"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "<ANY>"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
