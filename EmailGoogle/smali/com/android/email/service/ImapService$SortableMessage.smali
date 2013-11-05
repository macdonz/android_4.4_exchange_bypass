.class Lcom/android/email/service/ImapService$SortableMessage;
.super Ljava/lang/Object;
.source "ImapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/ImapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortableMessage"
.end annotation


# instance fields
.field private final mMessage:Lcom/android/emailcommon/mail/Message;

.field private final mUid:J


# direct methods
.method constructor <init>(Lcom/android/emailcommon/mail/Message;J)V
    .locals 0
    .parameter "message"
    .parameter "uid"

    .prologue
    .line 1396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/service/ImapService$SortableMessage;->mMessage:Lcom/android/emailcommon/mail/Message;

    .line 1398
    iput-wide p2, p0, Lcom/android/email/service/ImapService$SortableMessage;->mUid:J

    .line 1399
    return-void
.end method

.method static synthetic access$300(Lcom/android/email/service/ImapService$SortableMessage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1392
    iget-wide v0, p0, Lcom/android/email/service/ImapService$SortableMessage;->mUid:J

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/email/service/ImapService$SortableMessage;)Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/email/service/ImapService$SortableMessage;->mMessage:Lcom/android/emailcommon/mail/Message;

    #v0=(Reference);
    return-object v0
.end method
