.class public final Lcom/android/mail/providers/UIProvider$AutoAdvance;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoAdvance"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getAutoAdvanceInt(Ljava/lang/String;)I
    .locals 2
    .parameter "autoAdvanceSetting"

    .prologue
    .line 2137
    const-string v1, "newer"

    #v1=(Reference);
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 2138
    const/4 v0, 0x2

    .line 2147
    .local v0, autoAdvance:I
    :goto_0
    #v0=(PosByte);
    return v0

    .line 2139
    .end local v0           #autoAdvance:I
    :cond_0
    #v0=(Uninit);
    const-string v1, "older"

    #v1=(Reference);
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 2140
    const/4 v0, 0x1

    .restart local v0       #autoAdvance:I
    #v0=(One);
    goto :goto_0

    .line 2141
    .end local v0           #autoAdvance:I
    :cond_1
    #v0=(Uninit);
    const-string v1, "list"

    #v1=(Reference);
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_2

    .line 2142
    const/4 v0, 0x3

    .restart local v0       #autoAdvance:I
    #v0=(PosByte);
    goto :goto_0

    .line 2144
    .end local v0           #autoAdvance:I
    :cond_2
    #v0=(Uninit);
    const/4 v0, 0x0

    .restart local v0       #autoAdvance:I
    #v0=(Null);
    goto :goto_0
.end method
