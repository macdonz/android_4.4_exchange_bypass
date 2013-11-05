.class public Lcom/android/mail/ui/MailActivity;
.super Lcom/android/mail/ui/AbstractMailActivity;
.source "MailActivity.java"

# interfaces
.implements Lcom/android/mail/ui/ControllableActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/ui/MailActivity$1;,
        Lcom/android/mail/ui/MailActivity$NdefMessageMaker;
    }
.end annotation


# static fields
.field protected static sAccountName:Ljava/lang/String;


# instance fields
.field private mAccessibilityEnabled:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mController:Lcom/android/mail/ui/ActivityController;

.field protected mConversationListHelper:Lcom/android/mail/ui/ConversationListHelper;

.field private final mNdefHandler:Lcom/android/mail/ui/MailActivity$NdefMessageMaker;

.field private mPendingToastOp:Lcom/android/mail/ui/ToastBarOperation;

.field private mViewMode:Lcom/android/mail/ui/ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/mail/ui/AbstractMailActivity;-><init>()V

    .line 105
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/ui/MailActivity$NdefMessageMaker;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Lcom/android/mail/ui/MailActivity$NdefMessageMaker;-><init>(Lcom/android/mail/ui/MailActivity$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/MailActivity;->mNdefHandler:Lcom/android/mail/ui/MailActivity$NdefMessageMaker;

    .line 109
    new-instance v0, Lcom/android/mail/ui/ConversationListHelper;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ConversationListHelper;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/MailActivity;->mConversationListHelper:Lcom/android/mail/ui/ConversationListHelper;

    .line 110
    return-void
.end method

.method public static setNfcMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 184
    sput-object p0, Lcom/android/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    .line 185
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 115
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public doNothingClickHandler(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 365
    return-void
.end method

.method public getAccountController()Lcom/android/mail/ui/AccountController;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    return-object v0
.end method

.method public final getConversationListHelper()Lcom/android/mail/ui/ConversationListHelper;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mConversationListHelper:Lcom/android/mail/ui/ConversationListHelper;

    #v0=(Reference);
    return-object v0
.end method

.method public getConversationUpdater()Lcom/android/mail/ui/ConversationUpdater;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    return-object v0
.end method

.method public getErrorListener()Lcom/android/mail/ui/ErrorListener;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    return-object v0
.end method

.method public getFolderController()Lcom/android/mail/ui/FolderController;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    return-object v0
.end method

.method public getFolderSelector()Lcom/android/mail/ui/FolderSelector;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    return-object v0
.end method

.method public getHierarchyFolder()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->getHierarchyFolder()Lcom/android/mail/providers/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getListHandler()Lcom/android/mail/ui/ConversationListCallbacks;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    return-object v0
.end method

.method public getPendingToastOperation()Lcom/android/mail/ui/ToastBarOperation;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mPendingToastOp:Lcom/android/mail/ui/ToastBarOperation;

    #v0=(Reference);
    return-object v0
.end method

.method public getRecentFolderController()Lcom/android/mail/ui/RecentFolderController;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    return-object v0
.end method

.method public getSelectedSet()Lcom/android/mail/ui/ConversationSelectionSet;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->getSelectedSet()Lcom/android/mail/ui/ConversationSelectionSet;

    move-result-object v0

    return-object v0
.end method

.method public getViewMode()Lcom/android/mail/ui/ViewMode;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mViewMode:Lcom/android/mail/ui/ViewMode;

    #v0=(Reference);
    return-object v0
.end method

.method public handleDrop(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "event"
    .parameter "folder"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Lcom/android/mail/ui/ActivityController;->handleDrop(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)V

    .line 324
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    #v0=(Boolean);
    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/android/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    .line 414
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onAccessibilityStateChanged()V

    .line 415
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1, p2, p3}, Lcom/android/mail/ui/ActivityController;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onAnimationEnd(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 1
    .parameter "animatedAdapter"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onAnimationEnd(Lcom/android/mail/ui/AnimatedAdapter;)V

    .line 370
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onBackPressed()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 134
    invoke-super {p0}, Lcom/android/mail/ui/AbstractMailActivity;->onBackPressed()V

    .line 136
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    new-instance v2, Lcom/android/mail/ui/ViewMode;

    #v2=(UninitRef);
    invoke-direct {v2}, Lcom/android/mail/ui/ViewMode;-><init>()V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/MailActivity;->mViewMode:Lcom/android/mail/ui/ViewMode;

    .line 143
    invoke-virtual {p0}, Lcom/android/mail/ui/MailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mail/utils/Utils;->useTabletUI(Landroid/content/res/Resources;)Z

    move-result v1

    .line 144
    .local v1, tabletUi:Z
    #v1=(Boolean);
    iget-object v2, p0, Lcom/android/mail/ui/MailActivity;->mViewMode:Lcom/android/mail/ui/ViewMode;

    invoke-static {p0, v2, v1}, Lcom/android/mail/ui/ControllerFactory;->forActivity(Lcom/android/mail/ui/MailActivity;Lcom/android/mail/ui/ViewMode;Z)Lcom/android/mail/ui/ActivityController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    .line 145
    iget-object v2, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-interface {v2, p1}, Lcom/android/mail/ui/ActivityController;->onCreate(Landroid/os/Bundle;)Z

    .line 147
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Lcom/android/mail/ui/MailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lcom/android/mail/ui/MailActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 149
    iget-object v2, p0, Lcom/android/mail/ui/MailActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    #v2=(Boolean);
    iput-boolean v2, p0, Lcom/android/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    .line 150
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 151
    .local v0, nfcAdapter:Landroid/nfc/NfcAdapter;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 152
    iget-object v2, p0, Lcom/android/mail/ui/MailActivity;->mNdefHandler:Lcom/android/mail/ui/MailActivity$NdefMessageMaker;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Landroid/app/Activity;

    #v3=(Reference);
    invoke-virtual {v0, v2, p0, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 154
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    invoke-interface {v1, p1, p2}, Lcom/android/mail/ui/ActivityController;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 196
    .local v0, dialog:Landroid/app/Dialog;
    #v0=(Reference);
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/AbstractMailActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/android/mail/ui/AbstractMailActivity;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onDestroy()V

    .line 272
    return-void
.end method

.method public onFooterViewErrorActionClick(Lcom/android/mail/providers/Folder;I)V
    .locals 1
    .parameter "folder"
    .parameter "errorStatus"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Lcom/android/mail/ui/ActivityController;->onFooterViewErrorActionClick(Lcom/android/mail/providers/Folder;I)V

    .line 390
    return-void
.end method

.method public onFooterViewLoadMoreClick(Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter "folder"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onFooterViewLoadMoreClick(Lcom/android/mail/providers/Folder;)V

    .line 395
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Lcom/android/mail/ui/ActivityController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/mail/ui/AbstractMailActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/mail/ui/AbstractMailActivity;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onPause()V

    .line 218
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onPostCreate(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 222
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/AbstractMailActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 223
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1, p2, p3}, Lcom/android/mail/ui/ActivityController;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 229
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/mail/ui/AbstractMailActivity;->onRestart()V

    .line 172
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onRestart()V

    .line 173
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/mail/ui/AbstractMailActivity;->onResume()V

    .line 235
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v1=(Reference);
    invoke-interface {v1}, Lcom/android/mail/ui/ActivityController;->onResume()V

    .line 236
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 237
    .local v0, enabled:Z
    #v0=(Boolean);
    iget-boolean v1, p0, Lcom/android/mail/ui/MailActivity;->mAccessibilityEnabled:Z

    #v1=(Boolean);
    if-eq v0, v1, :cond_0

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MailActivity;->onAccessibilityStateChanged(Z)V

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/android/mail/utils/StorageLowState;->checkStorageLowMode(Landroid/content/Context;)V

    .line 242
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->startSearch()V

    .line 259
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/mail/ui/AbstractMailActivity;->onStart()V

    .line 253
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onStart()V

    .line 254
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/mail/ui/AbstractMailActivity;->onStop()V

    .line 265
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->onStop()V

    .line 266
    return-void
.end method

.method public onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 1
    .parameter "undoOp"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 329
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/android/mail/ui/AbstractMailActivity;->onWindowFocusChanged(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1}, Lcom/android/mail/ui/ActivityController;->onWindowFocusChanged(Z)V

    .line 278
    return-void
.end method

.method public setPendingToastOperation(Lcom/android/mail/ui/ToastBarOperation;)V
    .locals 0
    .parameter "op"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/mail/ui/MailActivity;->mPendingToastOp:Lcom/android/mail/ui/ToastBarOperation;

    .line 349
    return-void
.end method

.method public startDragMode()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->startDragMode()V

    .line 400
    return-void
.end method

.method public stopDragMode()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/ActivityController;->stopDragMode()V

    .line 405
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)Z
    .locals 1
    .parameter "event"
    .parameter "folder"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    #v0=(Reference);
    invoke-interface {v0, p1, p2}, Lcom/android/mail/ui/ActivityController;->supportsDrag(Landroid/view/DragEvent;Lcom/android/mail/providers/Folder;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    const-string v1, "{ViewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->mViewMode:Lcom/android/mail/ui/ViewMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, " controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, p0, Lcom/android/mail/ui/MailActivity;->mController:Lcom/android/mail/ui/ActivityController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
