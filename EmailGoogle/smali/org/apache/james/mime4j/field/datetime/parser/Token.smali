.class public Lorg/apache/james/mime4j/field/datetime/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field public specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static final newToken(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 1
    .parameter "ofKind"

    .prologue
    .line 90
    .line 92
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
