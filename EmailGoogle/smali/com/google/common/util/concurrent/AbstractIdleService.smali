.class public abstract Lcom/google/common/util/concurrent/AbstractIdleService;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final delegate:Lcom/google/common/util/concurrent/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    #p0=(Reference);
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/util/concurrent/Service;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/AbstractIdleService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected executor(Lcom/google/common/util/concurrent/Service$State;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter "state"

    .prologue
    .line 87
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractIdleService$2;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;Lcom/google/common/util/concurrent/Service$State;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected abstract shutDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract startUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->delegate:Lcom/google/common/util/concurrent/Service;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;->getServiceName()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
