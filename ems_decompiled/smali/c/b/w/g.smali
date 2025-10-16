.class public Lc/b/w/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lc/b/w/m;


# direct methods
.method public constructor <init>(Lc/b/w/m;)V
    .locals 0

    iput-object p1, p0, Lc/b/w/g;->c:Lc/b/w/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lc/b/w/g;->c:Lc/b/w/m;

    invoke-interface {p1}, Lc/b/w/m;->a()V

    return-void
.end method
