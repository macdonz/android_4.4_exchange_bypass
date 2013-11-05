.class Lcom/android/mail/browse/MultiAdapterSpinner$1;
.super Ljava/lang/Object;
.source "MultiAdapterSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/MultiAdapterSpinner;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/MultiAdapterSpinner;

.field final synthetic val$result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/MultiAdapterSpinner;Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mail/browse/MultiAdapterSpinner$1;->this$0:Lcom/android/mail/browse/MultiAdapterSpinner;

    iput-object p2, p0, Lcom/android/mail/browse/MultiAdapterSpinner$1;->val$result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner$1;->val$result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    check-cast v0, Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;

    iget-object v1, p0, Lcom/android/mail/browse/MultiAdapterSpinner$1;->val$result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    #v1=(Reference);
    iget v1, v1, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    #v1=(Integer);
    invoke-interface {v0, v1}, Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->onClick(I)V

    .line 178
    return-void
.end method
