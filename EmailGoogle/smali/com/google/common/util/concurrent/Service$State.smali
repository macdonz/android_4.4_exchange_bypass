.class public final enum Lcom/google/common/util/concurrent/Service$State;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/Service$State;

.field public static final enum FAILED:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum NEW:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum RUNNING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STARTING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STOPPING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum TERMINATED:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    #v7=(PosByte);
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x2

    #v5=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 130
    #v3=(Null);
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    #v0=(UninitRef);
    const-string v1, "NEW"

    #v1=(Reference);
    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 135
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    #v0=(UninitRef);
    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 140
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    #v0=(UninitRef);
    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 145
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    #v0=(UninitRef);
    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 151
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    #v0=(UninitRef);
    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v7}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 157
    new-instance v0, Lcom/google/common/util/concurrent/Service$State;

    #v0=(UninitRef);
    const-string v1, "FAILED"

    const/4 v2, 0x5

    #v2=(PosByte);
    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 124
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [Lcom/google/common/util/concurrent/Service$State;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    #v1=(PosByte);
    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    #v2=(Reference);
    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/Service$State;
    .locals 1
    .parameter

    .prologue
    .line 124
    const-class v0, Lcom/google/common/util/concurrent/Service$State;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method public static values()[Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/Service$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method
