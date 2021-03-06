.class public Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;
.super Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
.source "HorizontallyTuggableView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic findIdPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->findIdPosition(Ljava/lang/Void;)I

    move-result v0

    return v0
.end method

.method public findIdPosition(Ljava/lang/Void;)I
    .locals 1
    .parameter "id"

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic findItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->findItemPosition(Ljava/lang/Void;)I

    move-result v0

    return v0
.end method

.method public findItemPosition(Ljava/lang/Void;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getHomePosition()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->view:Landroid/view/View;

    return-object v0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public rebindView(ILandroid/view/View;)V
    .locals 0
    .parameter "position"
    .parameter "view"

    .prologue
    .line 54
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 62
    instance-of v0, p1, Lcom/google/glass/horizontalscroll/Card;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wrapped View needs to be a Card."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->view:Landroid/view/View;

    .line 69
    sget v0, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_view_recycler:I

    new-instance v1, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView$1;-><init>(Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView$2;-><init>(Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->setAdapter(Landroid/widget/Adapter;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->updateViews(Z)V

    .line 100
    return-void
.end method
