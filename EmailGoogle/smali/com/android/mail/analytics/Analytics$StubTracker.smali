.class final Lcom/android/mail/analytics/Analytics$StubTracker;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/android/mail/analytics/Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StubTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/analytics/Analytics$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/mail/analytics/Analytics$StubTracker;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public activityStart(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 77
    return-void
.end method

.method public activityStop(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 80
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 83
    return-void
.end method

.method public sendMenuItemEvent(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter "category"
    .parameter "itemResId"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 86
    return-void
.end method

.method public sendView(Ljava/lang/String;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 89
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "value"

    .prologue
    .line 92
    return-void
.end method
