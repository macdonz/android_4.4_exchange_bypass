.class public Lcom/android/mail/utils/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final INSTANCE:Lcom/android/mail/utils/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/mail/utils/Clock;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/utils/Clock;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/Clock;->INSTANCE:Lcom/android/mail/utils/Clock;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method
