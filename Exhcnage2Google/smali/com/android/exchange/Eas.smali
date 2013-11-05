.class public Lcom/android/exchange/Eas;
.super Ljava/lang/Object;
.source "Eas.java"


# static fields
.field public static DEBUG:Z

.field public static FILE_LOG:Z

.field public static PARSER_LOG:Z

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    #v0=(Null);
    sput-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    .line 35
    sput-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    .line 38
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 39
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 40
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getFolderClass(I)Ljava/lang/String;
    .locals 1
    .parameter "mailboxType"

    .prologue
    .line 163
    packed-switch p0, :pswitch_data_0

    .line 169
    const-string v0, "Email"

    :goto_0
    #v0=(Reference);
    return-object v0

    .line 165
    :pswitch_0
    #v0=(Uninit);
    const-string v0, "Calendar"

    #v0=(Reference);
    goto :goto_0

    .line 167
    :pswitch_1
    #v0=(Uninit);
    const-string v0, "Contacts"

    #v0=(Reference);
    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .parameter "version"

    .prologue
    .line 142
    const-string v0, "2.5"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 143
    const-wide/high16 v0, 0x4004

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 151
    :goto_0
    #v0=(Reference);
    return-object v0

    .line 144
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const-string v0, "12.0"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 145
    const-wide/high16 v0, 0x4028

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 146
    :cond_1
    #v0=(Boolean);v1=(Uninit);
    const-string v0, "12.1"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 147
    const-wide v0, 0x4028333333333333L

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 148
    :cond_2
    #v0=(Boolean);v1=(Uninit);
    const-string v0, "14.0"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 149
    const-wide/high16 v0, 0x402c

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 150
    :cond_3
    #v0=(Boolean);v1=(Uninit);
    const-string v0, "14.1"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    .line 151
    const-wide v0, 0x402c333333333333L

    #v0=(LongLo);v1=(LongHi);
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 153
    :cond_4
    #v0=(Boolean);v1=(Uninit);
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "illegal protocol version"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
.end method

.method public static setUserDebug(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    .line 129
    #v2=(Null);
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 130
    and-int/lit8 v0, p0, 0x1

    #v0=(Integer);
    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    #v0=(Boolean);
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 131
    and-int/lit8 v0, p0, 0x2

    #v0=(Integer);
    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    #v0=(Boolean);
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 132
    and-int/lit8 v0, p0, 0x4

    #v0=(Integer);
    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    #v0=(Boolean);
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 133
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 136
    :cond_1
    const-string v1, "Eas Debug"

    #v1=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v3, "Logging: "

    #v3=(Reference);
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_6

    const-string v0, "User "

    :goto_3
    #v0=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_7

    const-string v0, "Parser "

    :goto_4
    #v0=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    #v0=(Boolean);
    if-eqz v0, :cond_8

    const-string v0, "File"

    :goto_5
    #v0=(Reference);
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void

    :cond_3
    #v0=(Integer);v1=(One);v2=(Null);v3=(Uninit);
    move v0, v2

    .line 130
    #v0=(Null);
    goto :goto_0

    :cond_4
    #v0=(Integer);
    move v0, v2

    .line 131
    #v0=(Null);
    goto :goto_1

    :cond_5
    #v0=(Integer);
    move v0, v2

    .line 132
    #v0=(Null);
    goto :goto_2

    .line 136
    :cond_6
    #v0=(Boolean);v1=(Reference);v3=(Reference);
    const-string v0, ""

    #v0=(Reference);
    goto :goto_3

    :cond_7
    #v0=(Boolean);
    const-string v0, ""

    #v0=(Reference);
    goto :goto_4

    :cond_8
    #v0=(Boolean);
    const-string v0, ""

    #v0=(Reference);
    goto :goto_5
.end method
