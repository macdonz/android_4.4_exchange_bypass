.class public final enum Lcom/android/emailcommon/mail/Message$RecipientType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecipientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/mail/Message$RecipientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/mail/Message$RecipientType;

.field public static final enum BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

.field public static final enum CC:Lcom/android/emailcommon/mail/Message$RecipientType;

.field public static final enum TO:Lcom/android/emailcommon/mail/Message$RecipientType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    #v4=(PosByte);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 26
    #v2=(Null);
    new-instance v0, Lcom/android/emailcommon/mail/Message$RecipientType;

    #v0=(UninitRef);
    const-string v1, "TO"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    new-instance v0, Lcom/android/emailcommon/mail/Message$RecipientType;

    #v0=(UninitRef);
    const-string v1, "CC"

    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    new-instance v0, Lcom/android/emailcommon/mail/Message$RecipientType;

    #v0=(UninitRef);
    const-string v1, "BCC"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/mail/Message$RecipientType;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    .line 25
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Lcom/android/emailcommon/mail/Message$RecipientType;

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->$VALUES:[Lcom/android/emailcommon/mail/Message$RecipientType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message$RecipientType;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/android/emailcommon/mail/Message$RecipientType;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Message$RecipientType;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/mail/Message$RecipientType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->$VALUES:[Lcom/android/emailcommon/mail/Message$RecipientType;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/android/emailcommon/mail/Message$RecipientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Message$RecipientType;

    return-object v0
.end method
