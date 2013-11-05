.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewActionBase"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 2981
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected doEndPosIsSelected()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2995
    #v0=(One);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v1

    #v1=(Integer);
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x5

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    .line 2997
    :cond_0
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 2998
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->fixSelection()Z

    .line 2999
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext()Z

    .line 3007
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    .line 3001
    :cond_1
    #v0=(One);v1=(Integer);v2=(PosByte);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    #v2=(Integer);
    if-eq v1, v2, :cond_2

    .line 3002
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3003
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3004
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext()Z

    goto :goto_0

    .line 3007
    :cond_2
    #v1=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected doNotSelected()Z
    .locals 2

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x5

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 2986
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 2987
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    .line 2988
    const/4 v0, 0x1

    .line 2990
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);v1=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
