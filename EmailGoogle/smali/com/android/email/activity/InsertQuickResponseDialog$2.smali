.class Lcom/android/email/activity/InsertQuickResponseDialog$2;
.super Ljava/lang/Object;
.source "InsertQuickResponseDialog.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/InsertQuickResponseDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/email/activity/InsertQuickResponseDialog;

.field final synthetic val$account:Lcom/android/mail/providers/Account;

.field final synthetic val$adapter:Landroid/widget/SimpleCursorAdapter;


# direct methods
.method constructor <init>(Lcom/android/email/activity/InsertQuickResponseDialog;Lcom/android/mail/providers/Account;Landroid/widget/SimpleCursorAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/email/activity/InsertQuickResponseDialog$2;->this$0:Lcom/android/email/activity/InsertQuickResponseDialog;

    iput-object p2, p0, Lcom/android/email/activity/InsertQuickResponseDialog$2;->val$account:Lcom/android/mail/providers/Account;

    iput-object p3, p0, Lcom/android/email/activity/InsertQuickResponseDialog$2;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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

    .line 123
    #v4=(Null);
    new-instance v0, Landroid/content/CursorLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/email/activity/InsertQuickResponseDialog$2;->this$0:Lcom/android/email/activity/InsertQuickResponseDialog;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/email/activity/InsertQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/InsertQuickResponseDialog$2;->val$account:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Account;->quickResponseUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mail/providers/UIProvider;->QUICK_RESPONSE_PROJECTION:[Ljava/lang/String;

    #v3=(Reference);
    move-object v5, v4

    #v5=(Null);
    move-object v6, v4

    #v6=(Null);
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    #v0=(Reference);
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 129
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/InsertQuickResponseDialog$2;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    #v0=(Reference);
    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 130
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/InsertQuickResponseDialog$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 134
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/email/activity/InsertQuickResponseDialog$2;->val$adapter:Landroid/widget/SimpleCursorAdapter;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 135
    return-void
.end method
