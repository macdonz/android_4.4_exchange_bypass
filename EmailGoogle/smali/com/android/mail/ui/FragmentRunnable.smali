.class public abstract Lcom/android/mail/ui/FragmentRunnable;
.super Ljava/lang/Object;
.source "FragmentRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private final mOpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/FragmentRunnable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .parameter "opName"
    .parameter "fragment"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/FragmentRunnable;->mOpName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract go()V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/android/mail/ui/FragmentRunnable;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Unable to run op=\'%s\' b/c fragment is not attached: %s"

    #v1=(Reference);
    const/4 v2, 0x2

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/FragmentRunnable;->mOpName:Ljava/lang/String;

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    iget-object v4, p0, Lcom/android/mail/ui/FragmentRunnable;->mFragment:Landroid/app/Fragment;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 50
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 49
    :cond_0
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/ui/FragmentRunnable;->go()V

    goto :goto_0
.end method
