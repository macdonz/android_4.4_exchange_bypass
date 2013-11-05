.class public final Lcom/android/mail/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/analytics/Analytics$1;,
        Lcom/android/mail/analytics/Analytics$StubTracker;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/mail/analytics/Tracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    #p0=(Reference);
    return-void
.end method

.method public static getInstance()Lcom/android/mail/analytics/Tracker;
    .locals 3

    .prologue
    .line 56
    const-class v1, Lcom/android/mail/analytics/Analytics;

    #v1=(Reference);
    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/android/mail/analytics/Analytics;->sInstance:Lcom/android/mail/analytics/Tracker;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/mail/analytics/Analytics$StubTracker;

    #v0=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v2}, Lcom/android/mail/analytics/Analytics$StubTracker;-><init>(Lcom/android/mail/analytics/Analytics$1;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/analytics/Analytics;->sInstance:Lcom/android/mail/analytics/Tracker;

    .line 60
    :cond_0
    #v2=(Conflicted);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/android/mail/analytics/Analytics;->sInstance:Lcom/android/mail/analytics/Tracker;

    return-object v0

    .line 60
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    :try_start_1
    #v0=(Reference);
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isLoggable()Z
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
