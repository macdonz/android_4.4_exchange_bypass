.class public final enum Lcom/android/emailcommon/mail/Folder$FolderRole;
.super Ljava/lang/Enum;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FolderRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/emailcommon/mail/Folder$FolderRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/emailcommon/mail/Folder$FolderRole;

.field public static final enum DRAFTS:Lcom/android/emailcommon/mail/Folder$FolderRole;

.field public static final enum INBOX:Lcom/android/emailcommon/mail/Folder$FolderRole;

.field public static final enum OTHER:Lcom/android/emailcommon/mail/Folder$FolderRole;

.field public static final enum OUTBOX:Lcom/android/emailcommon/mail/Folder$FolderRole;

.field public static final enum SENT:Lcom/android/emailcommon/mail/Folder$FolderRole;

.field public static final enum TRASH:Lcom/android/emailcommon/mail/Folder$FolderRole;

.field public static final enum UNKNOWN:Lcom/android/emailcommon/mail/Folder$FolderRole;


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

    .line 36
    #v3=(Null);
    new-instance v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(UninitRef);
    const-string v1, "INBOX"

    #v1=(Reference);
    invoke-direct {v0, v1, v3}, Lcom/android/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->INBOX:Lcom/android/emailcommon/mail/Folder$FolderRole;

    .line 37
    new-instance v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(UninitRef);
    const-string v1, "TRASH"

    invoke-direct {v0, v1, v4}, Lcom/android/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->TRASH:Lcom/android/emailcommon/mail/Folder$FolderRole;

    .line 38
    new-instance v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(UninitRef);
    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lcom/android/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->SENT:Lcom/android/emailcommon/mail/Folder$FolderRole;

    .line 39
    new-instance v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(UninitRef);
    const-string v1, "DRAFTS"

    invoke-direct {v0, v1, v6}, Lcom/android/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->DRAFTS:Lcom/android/emailcommon/mail/Folder$FolderRole;

    .line 41
    new-instance v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(UninitRef);
    const-string v1, "OUTBOX"

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->OUTBOX:Lcom/android/emailcommon/mail/Folder$FolderRole;

    .line 42
    new-instance v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(UninitRef);
    const-string v1, "OTHER"

    const/4 v2, 0x5

    #v2=(PosByte);
    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->OTHER:Lcom/android/emailcommon/mail/Folder$FolderRole;

    .line 43
    new-instance v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(UninitRef);
    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder$FolderRole;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->UNKNOWN:Lcom/android/emailcommon/mail/Folder$FolderRole;

    .line 35
    const/4 v0, 0x7

    #v0=(PosByte);
    new-array v0, v0, [Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderRole;->INBOX:Lcom/android/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderRole;->TRASH:Lcom/android/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderRole;->SENT:Lcom/android/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderRole;->DRAFTS:Lcom/android/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderRole;->OUTBOX:Lcom/android/emailcommon/mail/Folder$FolderRole;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    #v1=(PosByte);
    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderRole;->OTHER:Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderRole;->UNKNOWN:Lcom/android/emailcommon/mail/Folder$FolderRole;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->$VALUES:[Lcom/android/emailcommon/mail/Folder$FolderRole;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder$FolderRole;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Folder$FolderRole;

    return-object v0
.end method

.method public static values()[Lcom/android/emailcommon/mail/Folder$FolderRole;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderRole;->$VALUES:[Lcom/android/emailcommon/mail/Folder$FolderRole;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/android/emailcommon/mail/Folder$FolderRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/mail/Folder$FolderRole;

    return-object v0
.end method
