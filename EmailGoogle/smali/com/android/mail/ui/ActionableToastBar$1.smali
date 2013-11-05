.class Lcom/android/mail/ui/ActionableToastBar$1;
.super Ljava/lang/Object;
.source "ActionableToastBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ActionableToastBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ActionableToastBar;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ActionableToastBar;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mail/ui/ActionableToastBar$1;->this$0:Lcom/android/mail/ui/ActionableToastBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar$1;->this$0:Lcom/android/mail/ui/ActionableToastBar;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ActionableToastBar;->access$000(Lcom/android/mail/ui/ActionableToastBar;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/mail/ui/ActionableToastBar$1;->this$0:Lcom/android/mail/ui/ActionableToastBar;

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/ActionableToastBar;->hide(ZZ)V

    .line 74
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
