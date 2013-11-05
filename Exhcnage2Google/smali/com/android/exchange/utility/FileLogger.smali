.class public Lcom/android/exchange/utility/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static LOGGER:Lcom/android/exchange/utility/FileLogger;

.field public static LOG_FILE_NAME:Ljava/lang/String;

.field private static sLogWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    #v0=(Null);
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 28
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/emaillog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :try_start_0
    #p0=(Reference);
    new-instance v0, Ljava/io/FileWriter;

    #v0=(UninitRef);
    sget-object v1, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    #v0=(Reference);
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 40
    :catch_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "prefix"
    .parameter "str"

    .prologue
    const/16 v10, 0xa

    .line 67
    #v10=(PosByte);
    const-class v8, Lcom/android/exchange/utility/FileLogger;

    #v8=(Reference);
    monitor-enter v8

    :try_start_0
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    #v7=(Reference);
    if-nez v7, :cond_0

    .line 68
    new-instance v7, Lcom/android/exchange/utility/FileLogger;

    #v7=(UninitRef);
    invoke-direct {v7}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    #v7=(Reference);
    sput-object v7, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 69
    const-string v7, "Logger"

    const-string v9, "\r\n\r\n --- New Log ---"

    #v9=(Reference);
    invoke-static {v7, v9}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    #v9=(Conflicted);
    new-instance v0, Ljava/util/Date;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 72
    .local v0, d:Ljava/util/Date;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 73
    .local v2, hr:I
    #v2=(Integer);
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    .line 74
    .local v3, min:I
    #v3=(Integer);
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v6

    .line 77
    .local v6, sec:I
    #v6=(Integer);
    new-instance v5, Ljava/lang/StringBuffer;

    #v5=(UninitRef);
    const/16 v7, 0x100

    #v7=(PosShort);
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 78
    .local v5, sb:Ljava/lang/StringBuffer;
    #v5=(Reference);
    const/16 v7, 0x5b

    #v7=(PosByte);
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    if-ge v3, v10, :cond_1

    .line 82
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    if-ge v6, v10, :cond_2

    .line 86
    const/16 v7, 0x30

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 89
    const-string v7, "] "

    #v7=(Reference);
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    if-eqz p0, :cond_3

    .line 91
    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v7, "| "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, s:Ljava/lang/String;
    #v4=(Reference);
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_4

    .line 100
    :try_start_1
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v7, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 101
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v7}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :cond_4
    :goto_0
    #v1=(Conflicted);v7=(Conflicted);
    monitor-exit v8

    return-void

    .line 102
    :catch_0
    #v1=(Uninit);v7=(Reference);
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    #v1=(Reference);
    const-string v7, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_4

    .line 106
    new-instance v7, Lcom/android/exchange/utility/FileLogger;

    #v7=(UninitRef);
    invoke-direct {v7}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    #v7=(Reference);
    sput-object v7, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 107
    sget-object v7, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    .line 109
    :try_start_3
    const-string v7, "FileLogger"

    const-string v9, "Exception writing log; recreating..."

    invoke-static {v7, v9}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 111
    :catch_1
    move-exception v7

    goto :goto_0

    .line 67
    .end local v0           #d:Ljava/util/Date;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #hr:I
    .end local v3           #min:I
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #sec:I
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);
    move-exception v7

    #v7=(Reference);
    monitor-exit v8

    throw v7
.end method
