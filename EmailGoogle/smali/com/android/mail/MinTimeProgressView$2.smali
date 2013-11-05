.class Lcom/android/mail/MinTimeProgressView$2;
.super Ljava/lang/Object;
.source "MinTimeProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/MinTimeProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/MinTimeProgressView;


# direct methods
.method constructor <init>(Lcom/android/mail/MinTimeProgressView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mail/MinTimeProgressView$2;->this$0:Lcom/android/mail/MinTimeProgressView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressView$2;->this$0:Lcom/android/mail/MinTimeProgressView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/MinTimeProgressView;->access$100(Lcom/android/mail/MinTimeProgressView;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressView$2;->this$0:Lcom/android/mail/MinTimeProgressView;

    #v0=(Reference);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/mail/MinTimeProgressView;->access$202(Lcom/android/mail/MinTimeProgressView;J)J

    .line 67
    iget-object v0, p0, Lcom/android/mail/MinTimeProgressView$2;->this$0:Lcom/android/mail/MinTimeProgressView;

    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/mail/MinTimeProgressView;->access$301(Lcom/android/mail/MinTimeProgressView;I)V

    .line 69
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
