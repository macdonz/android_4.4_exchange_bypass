.class public abstract Lcom/android/mail/browse/ConversationOverlayItem;
.super Ljava/lang/Object;
.source "ConversationOverlayItem.java"


# instance fields
.field private mHeight:I

.field private mNeedsMeasure:Z

.field private mPosition:I

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public belongsToMessage(Lcom/android/mail/browse/ConversationMessage;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 135
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public abstract bindView(Landroid/view/View;Z)V
.end method

.method public canBecomeSnapHeader()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public canPushSnapHeader()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public abstract createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x50

    #v0=(PosByte);
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mHeight:I

    #v0=(Integer);
    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mPosition:I

    #v0=(Integer);
    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mTop:I

    #v0=(Integer);
    return v0
.end method

.method public abstract getType()I
.end method

.method public invalidateMeasurement()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mNeedsMeasure:Z

    .line 124
    return-void
.end method

.method public abstract isContiguous()Z
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public isMeasurementValid()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mNeedsMeasure:Z

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public markMeasurementValid()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mNeedsMeasure:Z

    .line 120
    return-void
.end method

.method public onModelUpdated(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 147
    return-void
.end method

.method public rebindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 182
    return-void
.end method

.method public setHeight(I)Z
    .locals 6
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, 0x1

    .line 97
    #v0=(One);
    const-string v2, "ConvLayout"

    #v2=(Reference);
    const-string v3, "IN setHeight=%dpx of overlay item: %s"

    #v3=(Reference);
    const/4 v4, 0x2

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v1

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    iget v2, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mHeight:I

    #v2=(Integer);
    if-eq v2, p1, :cond_0

    .line 99
    iput p1, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mHeight:I

    .line 100
    iput-boolean v0, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mNeedsMeasure:Z

    .line 103
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    move v0, v1

    #v0=(Null);
    goto :goto_0
.end method

.method public setMessage(Lcom/android/mail/browse/ConversationMessage;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 139
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mPosition:I

    .line 151
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/mail/browse/ConversationOverlayItem;->mTop:I

    .line 112
    return-void
.end method
