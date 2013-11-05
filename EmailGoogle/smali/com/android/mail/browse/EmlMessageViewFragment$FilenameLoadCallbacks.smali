.class Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;
.super Ljava/lang/Object;
.source "EmlMessageViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/EmlMessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilenameLoadCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/EmlMessageViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/EmlMessageViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/EmlMessageViewFragment;Lcom/android/mail/browse/EmlMessageViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;-><init>(Lcom/android/mail/browse/EmlMessageViewFragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 268
    #v4=(Null);
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 274
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v0

    .line 270
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);
    new-instance v0, Landroid/content/CursorLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/browse/EmlMessageViewFragment;->access$400(Lcom/android/mail/browse/EmlMessageViewFragment;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const-string v6, "_display_name"

    #v6=(Reference);
    aput-object v6, v3, v5

    const/4 v5, 0x1

    #v5=(One);
    const-string v6, "_size"

    aput-object v6, v3, v5

    move-object v5, v4

    #v5=(Null);
    move-object v6, v4

    #v6=(Null);
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);
    goto :goto_0

    .line 268
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 284
    :cond_1
    #v0=(Boolean);v1=(Uninit);
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "_display_name"

    #v1=(Reference);
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    #v1=(Integer);
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/browse/EmlMessageViewFragment$FilenameLoadCallbacks;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
