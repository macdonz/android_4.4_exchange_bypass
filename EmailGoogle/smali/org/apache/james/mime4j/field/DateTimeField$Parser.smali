.class public Lorg/apache/james/mime4j/field/DateTimeField$Parser;
.super Ljava/lang/Object;
.source "DateTimeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/DateTimeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;

    #v0=(Reference);
    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 7
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 56
    const/4 v4, 0x0

    .line 57
    .local v4, date:Ljava/util/Date;
    #v4=(Null);
    const/4 v5, 0x0

    .line 59
    .local v5, parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    #v5=(Null);
    invoke-static {p2}, Lcom/android/mail/utils/LogUtils;->cleanUpMimeDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    :try_start_0
    invoke-static {p2}, Lorg/apache/james/mime4j/field/datetime/DateTime;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 70
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Reference);v5=(Reference);v6=(Conflicted);
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeField;

    #v0=(UninitRef);
    move-object v1, p1

    #v1=(Reference);
    move-object v2, p2

    #v2=(Reference);
    move-object v3, p3

    #v3=(Reference);
    invoke-direct/range {v0 .. v5}, Lorg/apache/james/mime4j/field/DateTimeField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lorg/apache/james/mime4j/field/datetime/parser/ParseException;)V

    #v0=(Reference);
    return-object v0

    .line 64
    :catch_0
    #v0=(Conflicted);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Null);v5=(Null);v6=(Uninit);
    move-exception v6

    .line 65
    .local v6, e:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    #v6=(Reference);
    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    #v0=(Reference);
    invoke-virtual {v0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeField$Parser;->log:Lorg/apache/james/mime4j/Log;

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Parsing value \'"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 68
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-object v5, v6

    #v5=(Reference);
    goto :goto_0
.end method
