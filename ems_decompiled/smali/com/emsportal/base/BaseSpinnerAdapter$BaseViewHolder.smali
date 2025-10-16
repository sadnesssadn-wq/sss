.class public abstract Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emsportal/base/BaseSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseViewHolder"
.end annotation


# instance fields
.field public itemView:Landroid/view/View;

.field public final synthetic this$0:Lcom/emsportal/base/BaseSpinnerAdapter;


# direct methods
.method public constructor <init>(Lcom/emsportal/base/BaseSpinnerAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;->this$0:Lcom/emsportal/base/BaseSpinnerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;->itemView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public b(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/emsportal/base/BaseSpinnerAdapter$BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
