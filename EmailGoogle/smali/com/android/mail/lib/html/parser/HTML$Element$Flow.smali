.class public final enum Lcom/android/mail/lib/html/parser/HTML$Element$Flow;
.super Ljava/lang/Enum;
.source "HTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HTML$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mail/lib/html/parser/HTML$Element$Flow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

.field public static final enum BLOCK:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

.field public static final enum INLINE:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

.field public static final enum NONE:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 46
    #v2=(Null);
    new-instance v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    #v0=(UninitRef);
    const-string v1, "INLINE"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->INLINE:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    .line 47
    new-instance v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    #v0=(UninitRef);
    const-string v1, "BLOCK"

    invoke-direct {v0, v1, v3}, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->BLOCK:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    .line 48
    new-instance v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    #v0=(UninitRef);
    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->NONE:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    .line 45
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->INLINE:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->BLOCK:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->NONE:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->$VALUES:[Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mail/lib/html/parser/HTML$Element$Flow;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    return-object v0
.end method

.method public static values()[Lcom/android/mail/lib/html/parser/HTML$Element$Flow;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->$VALUES:[Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/android/mail/lib/html/parser/HTML$Element$Flow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    return-object v0
.end method
