.class Lcom/google/common/base/FinalizableReferenceQueue$SystemLoader;
.super Ljava/lang/Object;
.source "FinalizableReferenceQueue.java"

# interfaces
.implements Lcom/google/common/base/FinalizableReferenceQueue$FinalizerLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/FinalizableReferenceQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemLoader"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public loadFinalizer()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 186
    :try_start_0
    #v2=(Null);
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    .local v1, systemLoader:Ljava/lang/ClassLoader;
    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 193
    :try_start_1
    const-string v3, "com.google.common.base.internal.Finalizer"

    #v3=(Reference);
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 199
    .end local v1           #systemLoader:Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    return-object v2

    .line 187
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Uninit);
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/SecurityException;
    #v0=(Reference);
    invoke-static {}, Lcom/google/common/base/FinalizableReferenceQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v3

    #v3=(Reference);
    const-string v4, "Not allowed to access system class loader."

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #systemLoader:Ljava/lang/ClassLoader;
    :catch_1
    #v0=(Uninit);v1=(Reference);v3=(Conflicted);v4=(Uninit);
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/ClassNotFoundException;
    #v0=(Reference);
    goto :goto_0
.end method
