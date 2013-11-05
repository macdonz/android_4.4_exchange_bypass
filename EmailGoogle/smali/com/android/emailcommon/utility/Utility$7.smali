.class final Lcom/android/emailcommon/utility/Utility$7;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$7;->val$activity:Landroid/app/Activity;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 955
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 954
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$7;->val$listView:Landroid/widget/ListView;

    #v0=(Reference);
    iget v1, p0, Lcom/android/emailcommon/utility/Utility$7;->val$position:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
