.class public Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyledTextInputConnection"
.end annotation


# instance fields
.field mEST:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 1
    .parameter "target"
    .parameter "est"

    .prologue
    .line 2477
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 2478
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    .line 2479
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 2484
    const-string v0, "EditStyledText"

    #v0=(Reference);
    const-string v1, "--- commitText:"

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->access$1700(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    .line 2487
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 2493
    const-string v0, "EditStyledText"

    #v0=(Reference);
    const-string v1, "--- finishcomposing:"

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isSoftKeyBlocked()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isButtonsFocused()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->isEditting()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 2497
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->onEndEdit()V

    .line 2499
    :cond_0
    #v0=(Conflicted);
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
