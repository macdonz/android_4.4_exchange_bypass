.class Lcom/android/mail/MinTimeProgressDialog$2;
.super Ljava/lang/Object;
.source "MinTimeProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/MinTimeProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/MinTimeProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mail/MinTimeProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/mail/MinTimeProgressDialog$2;->this$0:Lcom/android/mail/MinTimeProgressDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressDialog$2;->this$0:Lcom/android/mail/MinTimeProgressDialog;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/MinTimeProgressDialog;->access$100(Lcom/android/mail/MinTimeProgressDialog;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressDialog$2;->this$0:Lcom/android/mail/MinTimeProgressDialog;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/MinTimeProgressDialog;->access$201(Lcom/android/mail/MinTimeProgressDialog;)V

    .line 58
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
