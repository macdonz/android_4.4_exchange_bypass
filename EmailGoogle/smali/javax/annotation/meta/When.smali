.class public final enum Ljavax/annotation/meta/When;
.super Ljava/lang/Enum;
.source "When.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/annotation/meta/When;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/annotation/meta/When;

.field public static final enum ALWAYS:Ljavax/annotation/meta/When;

.field public static final enum MAYBE:Ljavax/annotation/meta/When;

.field public static final enum NEVER:Ljavax/annotation/meta/When;

.field public static final enum UNKNOWN:Ljavax/annotation/meta/When;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    #v5=(PosByte);
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 15
    #v2=(Null);
    new-instance v0, Ljavax/annotation/meta/When;

    #v0=(UninitRef);
    const-string v1, "ALWAYS"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    .line 17
    new-instance v0, Ljavax/annotation/meta/When;

    #v0=(UninitRef);
    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Ljavax/annotation/meta/When;->UNKNOWN:Ljavax/annotation/meta/When;

    .line 19
    new-instance v0, Ljavax/annotation/meta/When;

    #v0=(UninitRef);
    const-string v1, "MAYBE"

    invoke-direct {v0, v1, v4}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Ljavax/annotation/meta/When;->MAYBE:Ljavax/annotation/meta/When;

    .line 21
    new-instance v0, Ljavax/annotation/meta/When;

    #v0=(UninitRef);
    const-string v1, "NEVER"

    invoke-direct {v0, v1, v5}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    .line 13
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Ljavax/annotation/meta/When;

    #v0=(Reference);
    sget-object v1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/annotation/meta/When;->UNKNOWN:Ljavax/annotation/meta/When;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/annotation/meta/When;->MAYBE:Ljavax/annotation/meta/When;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/annotation/meta/When;->$VALUES:[Ljavax/annotation/meta/When;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/annotation/meta/When;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Ljavax/annotation/meta/When;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/annotation/meta/When;

    return-object v0
.end method

.method public static values()[Ljavax/annotation/meta/When;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Ljavax/annotation/meta/When;->$VALUES:[Ljavax/annotation/meta/When;

    #v0=(Reference);
    invoke-virtual {v0}, [Ljavax/annotation/meta/When;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/annotation/meta/When;

    return-object v0
.end method
