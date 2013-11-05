.class Lcom/android/email/service/Pop3Service$FetchCallback;
.super Ljava/lang/Object;
.source "Pop3Service.java"

# interfaces
.implements Lorg/apache/james/mime4j/EOLConvertingInputStream$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/Pop3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCallback"
.end annotation


# instance fields
.field private final mAttachmentUri:Landroid/net/Uri;

.field private final mContentValues:Landroid/content/ContentValues;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "resolver"
    .parameter "attachmentUri"

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    #p0=(Reference);
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/email/service/Pop3Service$FetchCallback;->mContentValues:Landroid/content/ContentValues;

    .line 219
    iput-object p1, p0, Lcom/android/email/service/Pop3Service$FetchCallback;->mResolver:Landroid/content/ContentResolver;

    .line 220
    iput-object p2, p0, Lcom/android/email/service/Pop3Service$FetchCallback;->mAttachmentUri:Landroid/net/Uri;

    .line 221
    return-void
.end method


# virtual methods
.method public report(I)V
    .locals 4
    .parameter "bytesRead"

    .prologue
    const/4 v3, 0x0

    .line 225
    #v3=(Null);
    iget-object v0, p0, Lcom/android/email/service/Pop3Service$FetchCallback;->mContentValues:Landroid/content/ContentValues;

    #v0=(Reference);
    const-string v1, "uiDownloadedSize"

    #v1=(Reference);
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    iget-object v0, p0, Lcom/android/email/service/Pop3Service$FetchCallback;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/email/service/Pop3Service$FetchCallback;->mAttachmentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/service/Pop3Service$FetchCallback;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    return-void
.end method
