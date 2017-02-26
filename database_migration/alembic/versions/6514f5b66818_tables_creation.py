"""tables creation

Revision ID: 6514f5b66818
Revises: 
Create Date: 2017-02-25 16:58:48.251306

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '6514f5b66818'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    op.create_table('posts',
                    sa.Column('id', sa.Integer, primary_key=True),
                    sa.Column('title', sa.Text, nullable=False),
                    sa.Column('content', sa.Text, nullable=False),
                    sa.Column('introduction', sa.Text, nullable=False),
                    sa.Column('pinned', sa.Boolean, nullable=False),
                    sa.Column('created', sa.DateTime, nullable=False),
                    sa.Column('updated', sa.DateTime, nullable=True)
    )
    op.create_table('categories',
                    sa.Column('id', sa.Integer, primary_key=True),
                    sa.Column('name', sa.Text, nullable=False),
                    sa.Column('created', sa.DateTime, nullable=False),
                    sa.Column('updated', sa.DateTime, nullable=True)
    )
    op.create_table('sub_categories',
                    sa.Column('id', sa.Integer, primary_key=True),
                    sa.Column('name', sa.Text, nullable=False),
                    sa.Column('categorie_id', sa.Integer, nullable=False),
                    sa.Column('created', sa.DateTime, nullable=False),
                    sa.Column('updated', sa.DateTime, nullable=True)
    )


def downgrade():
    op.drop_table('posts')
    op.drop_table('categories')
    op.drop_table('sub_categories')
