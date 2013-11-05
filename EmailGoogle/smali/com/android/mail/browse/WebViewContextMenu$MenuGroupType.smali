.class public final enum Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;
.super Ljava/lang/Enum;
.source "WebViewContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/WebViewContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "MenuGroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

.field public static final enum ANCHOR_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

.field public static final enum EMAIL_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

.field public static final enum GEO_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

.field public static final enum PHONE_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;


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

    .line 76
    #v2=(Null);
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v0=(UninitRef);
    const-string v1, "PHONE_GROUP"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->PHONE_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    .line 77
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v0=(UninitRef);
    const-string v1, "EMAIL_GROUP"

    invoke-direct {v0, v1, v3}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->EMAIL_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    .line 78
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v0=(UninitRef);
    const-string v1, "GEO_GROUP"

    invoke-direct {v0, v1, v4}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->GEO_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    .line 79
    new-instance v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v0=(UninitRef);
    const-string v1, "ANCHOR_GROUP"

    invoke-direct {v0, v1, v5}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ANCHOR_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    .line 75
    const/4 v0, 0x4

    #v0=(PosByte);
    new-array v0, v0, [Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v0=(Reference);
    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->PHONE_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->EMAIL_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->GEO_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ANCHOR_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->$VALUES:[Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;
    .locals 1
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    return-object v0
.end method

.method public static values()[Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->$VALUES:[Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    return-object v0
.end method
