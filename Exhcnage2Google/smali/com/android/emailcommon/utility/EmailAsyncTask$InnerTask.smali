.class Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;
.super Landroid/os/AsyncTask;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params2:",
        "Ljava/lang/Object;",
        "Progress2:",
        "Ljava/lang/Object;",
        "Result2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams2;TProgress2;TResult2;>;"
    }
.end annotation


# instance fields
.field private final mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams2;TProgress2;TResult2;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams2;)TResult2;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask<TParams2;TProgress2;TResult2;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams2;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult2;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask<TParams2;TProgress2;TResult2;>;"
    .local p1, result:Ljava/lang/Object;,"TResult2;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->unregisterSelf()V

    .line 124
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult2;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask<TParams2;TProgress2;TResult2;>;"
    .local p1, result:Ljava/lang/Object;,"TResult2;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->unregisterSelf()V

    .line 130
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->access$000(Lcom/android/emailcommon/utility/EmailAsyncTask;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->mOwner:Lcom/android/emailcommon/utility/EmailAsyncTask;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
