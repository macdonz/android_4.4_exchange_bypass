.class final enum Lcom/google/common/collect/Interners$CustomInterner$Dummy;
.super Ljava/lang/Enum;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners$CustomInterner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Dummy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/Interners$CustomInterner$Dummy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/Interners$CustomInterner$Dummy;

.field public static final enum VALUE:Lcom/google/common/collect/Interners$CustomInterner$Dummy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    #v2=(Null);
    new-instance v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    #v0=(UninitRef);
    const-string v1, "VALUE"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Interners$CustomInterner$Dummy;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->$VALUES:[Lcom/google/common/collect/Interners$CustomInterner$Dummy;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Interners$CustomInterner$Dummy;
    .locals 1
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/Interners$CustomInterner$Dummy;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/common/collect/Interners$CustomInterner$Dummy;->$VALUES:[Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/google/common/collect/Interners$CustomInterner$Dummy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Interners$CustomInterner$Dummy;

    return-object v0
.end method