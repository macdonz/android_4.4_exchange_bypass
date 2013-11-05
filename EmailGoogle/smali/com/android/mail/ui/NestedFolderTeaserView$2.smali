.class Lcom/android/mail/ui/NestedFolderTeaserView$2;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/NestedFolderTeaserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/NestedFolderTeaserView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/NestedFolderTeaserView;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 314
    #v1=(One);
    iget-object v2, p0, Lcom/android/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v2=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$100(Lcom/android/mail/ui/NestedFolderTeaserView;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$102(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z

    .line 315
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v0=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$202(Lcom/android/mail/ui/NestedFolderTeaserView;Z)Z

    .line 316
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$2;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$300(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/AnimatedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->notifyDataSetChanged()V

    .line 317
    return-void

    .line 314
    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
