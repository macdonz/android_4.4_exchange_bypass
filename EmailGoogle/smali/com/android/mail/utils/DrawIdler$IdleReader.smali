.class Lcom/android/mail/utils/DrawIdler$IdleReader;
.super Ljava/lang/Object;
.source "DrawIdler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/DrawIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/utils/DrawIdler;


# direct methods
.method private constructor <init>(Lcom/android/mail/utils/DrawIdler;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/android/mail/utils/DrawIdler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/utils/DrawIdler;Lcom/android/mail/utils/DrawIdler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/mail/utils/DrawIdler$IdleReader;-><init>(Lcom/android/mail/utils/DrawIdler;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    #v3=(One);
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/android/mail/utils/DrawIdler;

    #v0=(Reference);
    invoke-static {v0, v3}, Lcom/android/mail/utils/DrawIdler;->access$100(Lcom/android/mail/utils/DrawIdler;I)V

    .line 79
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/android/mail/utils/DrawIdler;

    invoke-static {v0}, Lcom/android/mail/utils/DrawIdler;->access$200(Lcom/android/mail/utils/DrawIdler;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/android/mail/utils/DrawIdler;

    invoke-static {v0}, Lcom/android/mail/utils/DrawIdler;->access$200(Lcom/android/mail/utils/DrawIdler;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return v3
.end method

.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mail/utils/DrawIdler$IdleReader;->this$0:Lcom/android/mail/utils/DrawIdler;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {v0, v1}, Lcom/android/mail/utils/DrawIdler;->access$100(Lcom/android/mail/utils/DrawIdler;I)V

    .line 74
    return-void
.end method
