.class public abstract Lcom/android/email/mail/store/imap/ImapElement;
.super Ljava/lang/Object;
.source "ImapElement.java"


# static fields
.field public static final NONE:Lcom/android/email/mail/store/imap/ImapElement;


# instance fields
.field private mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/email/mail/store/imap/ImapElement$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapElement$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/mail/store/imap/ImapElement;->NONE:Lcom/android/email/mail/store/imap/ImapElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method protected final checkNotDestroyed()V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    #v0=(UninitRef);
    const-string v1, "Already destroyed"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 99
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    #v0=(One);
    iput-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    .line 90
    return-void
.end method

.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x0

    .line 115
    #v0=(Null);
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    return v0

    :cond_1
    #v0=(Null);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    #v2=(Reference);
    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    #v0=(Boolean);
    return v0
.end method

.method public abstract isList()Z
.end method

.method public abstract isString()Z
.end method
