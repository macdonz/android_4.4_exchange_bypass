.class public final Lcom/android/mail/providers/UIProvider$CursorStatus;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CursorStatus"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1569
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static isWaitingForResults(I)Z
    .locals 1
    .parameter "cursorStatus"

    .prologue
    .line 1583
    and-int/lit8 v0, p0, 0x1

    #v0=(Integer);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
