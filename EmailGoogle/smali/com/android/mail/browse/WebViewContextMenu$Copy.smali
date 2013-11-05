.class Lcom/android/mail/browse/WebViewContextMenu$Copy;
.super Ljava/lang/Object;
.source "WebViewContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/WebViewContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Copy"
.end annotation


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/mail/browse/WebViewContextMenu;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "text"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mail/browse/WebViewContextMenu$Copy;->this$0:Lcom/android/mail/browse/WebViewContextMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/browse/WebViewContextMenu$Copy;->mText:Ljava/lang/CharSequence;

    .line 104
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mail/browse/WebViewContextMenu$Copy;->this$0:Lcom/android/mail/browse/WebViewContextMenu;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/WebViewContextMenu$Copy;->mText:Ljava/lang/CharSequence;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/browse/WebViewContextMenu;->access$000(Lcom/android/mail/browse/WebViewContextMenu;Ljava/lang/CharSequence;)V

    .line 109
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method
