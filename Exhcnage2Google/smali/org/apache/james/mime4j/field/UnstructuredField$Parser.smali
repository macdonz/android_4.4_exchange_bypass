.class public Lorg/apache/james/mime4j/field/UnstructuredField$Parser;
.super Ljava/lang/Object;
.source "UnstructuredField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/UnstructuredField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 2
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 45
    invoke-static {p2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, value:Ljava/lang/String;
    #v0=(Reference);
    new-instance v1, Lorg/apache/james/mime4j/field/UnstructuredField;

    #v1=(UninitRef);
    invoke-direct {v1, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/UnstructuredField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #v1=(Reference);
    return-object v1
.end method
