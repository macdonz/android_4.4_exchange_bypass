.class Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;
.super Ljava/io/InputStream;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3ResponseInputStream"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mIn:Ljava/io/InputStream;

.field private mStartOfLine:Z

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 808
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    .line 812
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    .line 813
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, -0x1

    .line 817
    #v2=(Byte);
    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    #v3=(Boolean);
    if-eqz v3, :cond_0

    move v0, v2

    .line 832
    :goto_0
    #v0=(Integer);v1=(Conflicted);v3=(PosByte);
    return v0

    .line 820
    :cond_0
    #v0=(Uninit);v1=(One);v3=(Boolean);
    iget-object v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 821
    .local v0, d:I
    #v0=(Integer);
    iget-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    #v3=(Boolean);
    if-eqz v3, :cond_1

    const/16 v3, 0x2e

    #v3=(PosByte);
    if-ne v0, v3, :cond_1

    .line 822
    iget-object v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 823
    const/16 v3, 0xd

    #v3=(PosByte);
    if-ne v0, v3, :cond_1

    .line 824
    iput-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    .line 825
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move v0, v2

    .line 826
    #v0=(Byte);
    goto :goto_0

    .line 830
    :cond_1
    #v0=(Integer);v1=(One);
    const/16 v2, 0xa

    #v2=(PosByte);
    if-ne v0, v2, :cond_2

    :goto_1
    #v1=(Boolean);
    iput-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    goto :goto_0

    :cond_2
    #v1=(One);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1
.end method
