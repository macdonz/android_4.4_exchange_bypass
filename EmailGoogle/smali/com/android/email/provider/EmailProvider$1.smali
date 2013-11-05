.class Lcom/android/email/provider/EmailProvider$1;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/provider/EmailProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;

.field final synthetic val$oldConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$1;->this$0:Lcom/android/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$1;->val$oldConfiguration:Landroid/content/res/Configuration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "configuration"

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$1;->val$oldConfiguration:Landroid/content/res/Configuration;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 933
    .local v0, delta:I
    #v0=(Integer);
    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-static {v0, v1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$1;->this$0:Lcom/android/email/provider/EmailProvider;

    #v1=(Reference);
    const-wide/32 v2, 0x10000000

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailProvider;->access$000(Lcom/android/email/provider/EmailProvider;J)V

    .line 936
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 939
    return-void
.end method
