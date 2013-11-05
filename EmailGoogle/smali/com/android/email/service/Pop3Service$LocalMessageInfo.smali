.class Lcom/android/email/service/Pop3Service$LocalMessageInfo;
.super Ljava/lang/Object;
.source "Pop3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/Pop3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMessageInfo"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field final mFlagLoaded:I

.field final mId:J

.field final mServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x3

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const-string v2, "_id"

    #v2=(Reference);
    aput-object v2, v0, v1

    const/4 v1, 0x1

    #v1=(One);
    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    #v1=(PosByte);
    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/service/Pop3Service$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iput-wide v0, p0, Lcom/android/email/service/Pop3Service$LocalMessageInfo;->mId:J

    .line 161
    const/4 v0, 0x1

    #v0=(One);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/email/service/Pop3Service$LocalMessageInfo;->mFlagLoaded:I

    .line 162
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/service/Pop3Service$LocalMessageInfo;->mServerId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/email/service/Pop3Service$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
