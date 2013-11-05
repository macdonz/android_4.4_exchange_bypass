.class public abstract Lcom/android/emailcommon/utility/EmailAsyncTask;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;,
        Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private volatile mCancelled:Z

.field private final mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 41
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 141
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 143
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->access$100(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 146
    :cond_0
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/utility/EmailAsyncTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mCancelled:Z

    #v0=(Boolean);
    return v0
.end method

.method private final varargs executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter "executor"
    .parameter "cancelPrevious"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Z[TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p3, params:[Ljava/lang/Object;,"[TParams;"
    if-eqz p2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #v0=(Reference);
    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancelOthers(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 224
    :cond_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    #v0=(Reference);
    invoke-virtual {v0, p1, p3}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 225
    return-object p0
.end method

.method private static runAsyncInternal(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 3
    .parameter "executor"
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 244
    #v1=(Null);
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$1;

    #v0=(UninitRef);
    invoke-direct {v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$1;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Ljava/lang/Runnable;)V

    .line 251
    .local v0, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    #v0=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    check-cast v1, [Ljava/lang/Void;

    #v1=(Reference);
    invoke-direct {v0, p0, v2, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v1

    return-object v1
.end method

.method public static runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v0=(Reference);
    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncInternal(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static runAsyncSerial(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 1
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v0=(Reference);
    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncInternal(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final varargs callDoInBackgroundForTest([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final callOnCancelledForTest(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onCancelled(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method final callOnPostExecuteForTest(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->onPostExecute(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public final cancel(Z)V
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 161
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mCancelled:Z

    .line 162
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mInnerTask:Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$InnerTask;->cancel(Z)Z

    .line 163
    return-void
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->PARALLEL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    sget-object v0, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, v0, v1, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeInternal(Ljava/util/concurrent/Executor;Z[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method final unregisterSelf()V
    .locals 1

    .prologue
    .line 150
    .local p0, this:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask;->mTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->access$200(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 153
    :cond_0
    return-void
.end method
