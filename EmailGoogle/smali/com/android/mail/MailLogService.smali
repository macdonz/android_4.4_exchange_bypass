.class public Lcom/android/mail/MailLogService;
.super Landroid/app/Service;
.source "MailLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/MailLogService$1;,
        Lcom/android/mail/MailLogService$CircularBuffer;
    }
.end annotation


# static fields
.field public static DEBUG_ENABLED:Z

.field protected static final LOG_TAG:Ljava/lang/String;

.field private static final sLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/MailLogService$CircularBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    #v0=(Null);
    sput-boolean v0, Lcom/android/mail/MailLogService;->DEBUG_ENABLED:Z

    .line 56
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/MailLogService;->LOG_TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/MailLogService;->sLogs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    #p0=(Reference);
    return-void
.end method

.method private static getOrCreate(Ljava/lang/String;)Lcom/android/mail/MailLogService$CircularBuffer;
    .locals 2
    .parameter "tag"

    .prologue
    .line 131
    sget-object v1, Lcom/android/mail/MailLogService;->sLogs:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/android/mail/MailLogService;->sLogs:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/MailLogService$CircularBuffer;

    .line 137
    :goto_0
    #v0=(Conflicted);
    return-object v1

    .line 135
    :cond_0
    #v0=(Uninit);v1=(Boolean);
    new-instance v0, Lcom/android/mail/MailLogService$CircularBuffer;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Lcom/android/mail/MailLogService$CircularBuffer;-><init>(Lcom/android/mail/MailLogService$1;)V

    .line 136
    .local v0, buffer:Lcom/android/mail/MailLogService$CircularBuffer;
    #v0=(Reference);
    sget-object v1, Lcom/android/mail/MailLogService;->sLogs:Ljava/util/Map;

    #v1=(Reference);
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 137
    goto :goto_0
.end method

.method public static isLoggingLevelHighEnough()Z
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/android/mail/MailLogService;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-static {v0, v1}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 155
    sget-boolean v1, Lcom/android/mail/MailLogService;->DEBUG_ENABLED:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mail/MailLogService;->isLoggingLevelHighEnough()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 159
    :cond_1
    #v0=(Uninit);v1=(Boolean);
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, logMessage:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {p0}, Lcom/android/mail/MailLogService;->getOrCreate(Ljava/lang/String;)Lcom/android/mail/MailLogService$CircularBuffer;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1, v0}, Lcom/android/mail/MailLogService$CircularBuffer;->access$100(Lcom/android/mail/MailLogService$CircularBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 166
    sget-boolean v2, Lcom/android/mail/MailLogService;->DEBUG_ENABLED:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 181
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 169
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    const-string v2, "**** MailLogService ***\n"

    #v2=(Reference);
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    sget-object v2, Lcom/android/mail/MailLogService;->sLogs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Reference);v1=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Logging for tag: \""

    #v2=(Reference);
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 174
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 175
    const-string v2, "\"\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 177
    sget-object v2, Lcom/android/mail/MailLogService;->sLogs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mail/MailLogService$CircularBuffer;

    invoke-virtual {v2}, Lcom/android/mail/MailLogService$CircularBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 180
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    #v1=(Conflicted);v2=(Boolean);
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 121
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method
